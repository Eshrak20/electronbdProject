import React from "react";
import aboutImage from "../../../../../public/reactAssets/Images/AboutBanner/about.jpg"; // Adjust the path to your image

const AboutBanner = () => {
    return (
        <div 
            className="relative w-full h-64 md:h-80 lg:h-96 flex items-center justify-center bg-cover bg-center" 
            style={{ backgroundImage: `url(${aboutImage})` }}
        >
            {/* Dark Overlay */}
            <div className="absolute inset-0 bg-black/50"></div>

            {/* Text Content */}
            <div className="relative text-center text-white z-10">
                <h6 className="text-sm md:text-base uppercase tracking-wide text-gray-300">Home / About Us</h6>
                <h1 className="text-3xl md:text-5xl font-bold mt-2">About Us</h1>
            </div>
        </div>
    );
};

export default AboutBanner;
