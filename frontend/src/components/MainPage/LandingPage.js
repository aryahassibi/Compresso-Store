import "./LandingPage.css";
import { useNavigate } from "react-router-dom";
const LandingPage = () => {
    const navigate = useNavigate();
    return (
        <div className="lp-video-container">
            <video
                className="lp-video-background"
                autoPlay
                loop
                muted
                playsInline
                // poster="/posterimage.jpg"
            >
                <source src="/landingPageCoffee.mp4" type="video/mp4" />
                Your browser does not support the video tag.
            </video>
            <div className="lp-video-overlay">

                <div className="lp-tagline">
                  <div className="lp-tagline-main">
                    Grown by human hands.<br />
                    Roasted to perfection<br />
                    by lines of CODE.
                  </div>
                  <div className="lp-tagline-sub">
                    Responsibly sourced, <br />
                    expertly roasted coffee <br />
                    you’re going to love.
                  </div>
                </div>
                
                <button
                    className="lp-shop-now-btn"
                    onClick={() => {
                        navigate("/products");
                    }}
                >
                    Shop Now
                </button>
            </div>
        </div>
    );
};

export default LandingPage;
