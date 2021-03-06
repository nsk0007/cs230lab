<?php
require "includes/header.php"
?>

<main>
    <div class="bg-cover">
        <div class="h-100 container center-me" style="max-width: 50%;">
            <div class="my-auto">
                <div class="signup-form">
                    <form action="includes/signup-helper.php" method="post">
                        <h2>Register</h2>
                        <p class="hint-text">Create your account</p>
                        <div class="form-group" style="margin-left: 15px;">
                            <div class="row">
                                <div class="column">
                                    <input type="text" class="form-control" name="fname" placeholder="First Name" required="required">
                                </div>
                                <div class="column" style="margin-left: 15px;">
                                    <input type="text" class="form-control" name="lname" placeholder="Last Name" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="uname" placeholder="Userame" required="required">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" placeholder="E-mail" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="pwd" placeholder="Password" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="con-pwd" placeholder="Confirm Password" required="required">
                        </div>
                        <div class="form-group">
                            <button type="submit" name="signup-submit" class="btn btn-outline-success btn-large btn-block">Register</button>
                        </div>
                    </form>
                    <div class="text-center">Already a member? <a href="login.php">Sign in</a></div>
                </div>
            </div>
        </div>
    </div>
</main>