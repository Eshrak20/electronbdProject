import React from "react";

const BannerHome = () => {
    return (
        <div className="relative w-full h-screen overflow-hidden text-white flex items-center justify-center">
            {/* Background Video */}
            <video
                className="absolute top-0 left-0 w-full h-full object-cover z-negative"
                autoPlay
                loop
                muted
                playsInline
                src={`reactAssets/Videos/BannerVideo.mp4`}
            ></video>

            {/* Overlay */}
            <div className="absolute inset-0 bg-gradient-to-r from-black via-black/10 to-transparent"></div>

            {/* Centered Content */}
            <div className="absolute text-center z-10">
                <h2 className="text-xl md:text-4xl 2xl:text-6xl font-extrabold uppercase text-white bg-black bg-opacity-70 p-8 rounded-xl shadow-2xl shadow-red-800/50 transition duration-500 ease-in-out hover:scale-95">
                    "Empowering Progress <br /> Engineering the Future"
                </h2>

                <button className="mt-14 px-3 md:px-8 py-3 bg-gradient-to-r from-red-600 to-red-800 text-white text-xs md:text-lg font-bold uppercase rounded-xl shadow-lg hover:shadow-red-500/50 transition duration-300 ease-in-out">
                    <a href="/about">Learn More</a>
                </button>
            </div>
        </div>
    );
};

export default BannerHome;
