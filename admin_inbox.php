<?php
session_start();
include("config.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include("admin_head.php"); ?>
    <style>
        .inbox-header {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
        }
        .message-item {
            border: 1px solid #dee2e6;
            border-radius: 8px;
            margin-bottom: 10px;
            padding: 15px 20px;
            background-color: #fff;
            transition: box-shadow 0.2s;
        }
        .message-item:hover {
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }
        .message-unread {
            background-color: #e9f7ff;
            border-left: 4px solid #007bff;
        }
        .message-meta {
            font-size: 13px;
            color: #666;
        }
        .message-preview {
            font-size: 15px;
            margin: 5px 0;
            color: #333;
        }
        .message-actions a {
            margin-left: 5px;
        }
    </style>
</head>
<body>

<?php include("admin_topnav.php"); ?>

<div class="container" style="margin-top: 70px;">
    <div class="row">
        <div class="col-md-3">
            <?php include("admin_side_nav.php"); ?>
        </div>
        <div class="col-md-9">
            <div class="inbox-header text-primary">
                <i class="fa fa-envelope"></i> Inbox
            </div>
            <hr>

            <?php
            $sql = "SELECT * FROM messages ORDER BY ID DESC";
            $result = $con->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $unread = $row['STATUS'] == '1' ? 'message-unread' : '';
                    echo "<div class='message-item $unread'>";
                    echo "<div class='d-flex justify-content-between align-items-center'>";
                    echo "<div><strong><i class='fa fa-envelope'></i> {$row["NAME"]}</strong></div>";
                    echo "<div class='message-meta'>{$row["LOGS"]}</div>";
                    echo "</div>";
                    echo "<div class='message-preview'>" . htmlspecialchars(substr($row["MESSAGE"], 0, 100)) . "...</div>";
                    echo "<div class='message-actions text-end'>";
                    echo "<a href='view_mess.php?id={$row['ID']}' class='btn btn-sm btn-primary'><i class='fa fa-eye'></i> View</a>";
                    echo "<a href='admin_mess_del.php?id={$row['ID']}' class='btn btn-sm btn-danger'><i class='fa fa-trash'></i> Delete</a>";
                    echo "</div>";
                    echo "</div>";
                }
            } else {
                echo "<div class='alert alert-info'>No messages found.</div>";
            }
            ?>
        </div>
    </div>
</div>

</body>
</html>
