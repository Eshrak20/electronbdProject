import React from "react";

const DynamicBanner = ({ image, title, breadcrumb }) => {
    return (
        <div 
            className="relative w-full h-64 md:h-[500px] 2xl:h-[700px] flex items-center justify-center bg-cover bg-center" 
            style={{ backgroundImage: `url(${image})` }}
        >
            {/* Dark Overlay */}
            <div className="absolute inset-0 bg-black/50"></div>

            {/* Text Content */}
            <div className="relative text-center text-white z-10 mt-32">
                <h1 className="text-3xl md:text-5xl font-bold ">{title}</h1>
            </div>
        </div>
    );
};

export default DynamicBanner;
