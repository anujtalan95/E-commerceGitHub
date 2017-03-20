<header class="mdl-layout__header"> 
                <div class="mdl-layout__header-row"> 
                    <!-- Title -->                     
                    <span class="mdl-layout-title">Megamart</span> 
                    <!-- Add spacer, to align navigation to the right -->                     
                    <div class="mdl-navigation"> 
                        <div class="mdl-layout-spacer"> 
                            <!--  Search box -->                             
                            <div id="search-box"> 
                                <div class="form-group"> 
                                    <div class="col-sm-10"> 
                                        <form action="" method="get"> 
                                            <div class="input-group"> 
                                                <input type="text" class="form-control"> 
                                                <span class="input-group-btn"> <button type="button" class="btn btn-primary"> 
                                                        <i class="fa fa-search" aria-hidden="true"></i> 
                                                    </button> </span> 
                                            </div>                                             
                                        </form>                                         
                                    </div>                                     
                                </div>                                 
                            </div>                             
                        </div>                         
                    </div>                     
                    <!-- Navigation. We hide it in small screens. -->                     
                    <nav class="mdl-navigation mdl-layout--large-screen-only"> 
                        <div class="dropdown"> 
                            <a href="#category" class="mdl-navigation__link dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0">Shop by <b>Category</b>&nbsp;<span class="caret"></span></a> 
                            <ul class="dropdown-menu"> 
                                <li> 
                                    <a href="#">Books</a> 
                                </li>                                 
                                <li> 
                                    <a href="#">Video Games</a> 
                                </li>                                 
                                <li> 
                                    <a href="#">Mobiles & Tablets</a> 
                                </li>                                 
                                <li> 
                                    <a href="#">Computers & Accessories</a> 
                                </li>                                 
                                <li> 
                                    <a href="#">Clothing</a> 
                                </li>                                 
                            </ul>                             
                        </div>                         
                        <a class="mdl-navigation__link" href=""><button class="signup-button" style="background:transparent; border:none;">Sign Up</button></a> 
                        <a class="mdl-navigation__link" href="">
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect login-button" style="background: #ec694f;
    color: #fff;">Login</button>
                        </a>                         
                    </nav>                     
                    <div class="mdl-navigation cart"> 
                        <a class="mdl-navigation__link" href=""><i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i></a> 
                    </div>                     
                </div>                 
            </header>             
            <!-- Navigation. We hide it in large screens. -->             
            <div class="mdl-layout__drawer mdl-layout--small-screen-only"> 
                <span class="mdl-layout-title">Shop by <b>Category</b></span> 
                <nav class="mdl-navigation"> 
                    <a class="mdl-navigation__link" href=""><i class="fa fa-book" aria-hidden="true"></i>Books</a> 
                    <a class="mdl-navigation__link" href=""><i class="fa fa-gamepad" aria-hidden="true"></i>Video Games</a> 
                    <a class="mdl-navigation__link" href=""><i class="fa fa-mobile" aria-hidden="true"></i>Mobiles & Tablets</a> 
                    <a class="mdl-navigation__link" href=""><i class="fa fa-desktop" aria-hidden="true"></i>Computer & Accessories</a> 
                    <a class="mdl-navigation__link" href=""><i class="fa fa-child" aria-hidden="true"></i>Clothing</a> 
                    <div class="space-line"></div>
                    <a class="mdl-navigation__link" href=""><button id="signup-button2" style="background:transparent; border:none;">Sign Up</button></a> 
                    <a class="mdl-navigation__link" href=""><button id="login-button2" style="background:transparent; border:none;">Login</button></a> 
                </nav>                 
            </div>
            <!-- Navbar Close-->
            <!--login box -->
            <div id="login-Modal" class="open" style="display:none;">
                <div class="login-box"> 
                    <span class="close">&times;</span>
                    <!-- Textfield with Floating Label -->
                    <form action="Login" method="post" class="cd-form">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="sample3" name="email">
                            <label class="mdl-textfield__label" for="sample3">Enter Email Address</label>
                        </div>
                        <!-- Numeric Textfield with Floating Label -->
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="password" id="sample4" name="pwd">
                            <label class="mdl-textfield__label" for="sample4">Enter Password</label>
                            <span class="mdl-textfield__error">Input is not a number!</span>
                        </div>
                        <!-- Raised button with ripple -->
                        <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="login-btn">Login</button>
                        <!-- Raised button with ripple -->
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect signup-button" id="register-btn">Sign Up</button>
                    </form>
                </div>
            </div>
            <!--login box -->
            <!--signup box -->
            <div id="signup-Modal" class="open" style="display:none;">
                <div class="login-box"> 
                    <span class="close">&times;</span>
                    <!-- Textfield with Floating Label -->
                    <form action="Register" method="post" class="cd-form">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="sample3" name="name">
                            <label class="mdl-textfield__label" for="sample3">Enter your name</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="sample3" name="email">
                            <label class="mdl-textfield__label" for="sample3">Enter Email Address</label>
                        </div>
                        <!-- Numeric Textfield with Floating Label -->
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="password" id="sample4" name="pwd">
                            <label class="mdl-textfield__label" for="sample4">Enter Password</label>
                            <span class="mdl-textfield__error">Input is not a number!</span>
                        </div>
                        <!-- Raised button with ripple -->
                        <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="login-btn">Sign Up</button>
                        <!-- Raised button with ripple -->
                        <a href="signup.html">
                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect login-button" id="register-btn">Already have an account? Login</button>
                        </a>
                    </form>
                </div>
            </div>
            <!--signup box -->