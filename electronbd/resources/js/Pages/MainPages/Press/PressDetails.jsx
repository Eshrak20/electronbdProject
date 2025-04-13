import React from "react";
import { FileText, MapPin, Clock, Calendar } from "lucide-react";
import { Link } from "@inertiajs/react";

const PressDetails = ({ press }) => {
    const imageUrl = press.image.startsWith("http")
        ? press.image
        : `${window.location.origin}/${press.image}`;

    return (
        <div className="max-w-screen-2xl mx-auto px-4 sm:px-6 pt-5 md:pb-10 2xl:pb-20">
            {/* Back Button */}
            <Link
                href="/press"
                className="text-red-500 flex items-center gap-2 mb-6 hover:text-red-700 transition-all duration-300"
            >
                <span>&larr; Back</span>
            </Link>

            {/* Image Banner with Hover Effects */}
            <div className="relative w-full h-[450px] md:h-[550px] rounded-xl overflow-hidden shadow-lg group">
                <img
                    src={imageUrl}
                    alt={press.title}
                    className="w-full h-full object-cover transition-transform duration-500 ease-in-out group-hover:scale-110"
                />
                <div className="absolute inset-0 bg-black bg-opacity-50 flex flex-col justify-center items-center text-center px-4 sm:px-6">
                    <h1 className="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-semibold text-white drop-shadow-lg transition-all duration-300 group-hover:text-red-300 group-hover:shadow-red-500 group-hover:shadow-md">
                        {press.title}
                    </h1>
                    <p className="text-gray-200 text-base sm:text-lg md:text-xl mt-6 sm:mt-8 max-w-4xl transition-all duration-300 group-hover:text-gray-100 group-hover:shadow-md">
                        {press.description}
                    </p>
                </div>
            </div>

            {/* Press Details Card */}
            <div className="relative mt-6 sm:mt-8 p-4 sm:p-6 bg-white shadow-lg rounded-xl border border-gray-200 transition-all duration-300">
                {/* Header */}
                <div className="flex items-center gap-2 mb-4">
                    <FileText className="w-5 sm:w-6 h-5 sm:h-6 text-red-600" />
                    <p className="text-gray-800 text-base sm:text-lg font-semibold">
                        Press Details
                    </p>
                </div>

                {/* Additional Info */}
                <div className="mt-3 sm:mt-4 space-y-3 sm:space-y-4 text-gray-700 text-sm sm:text-base">
                    <div className="flex items-center gap-2 sm:gap-3 hover:text-red-600 transition-colors duration-300">
                        <MapPin className="w-4 sm:w-5 h-4 sm:h-5 text-gray-500" />
                        <p>
                            <strong>Place:</strong> {press.place}
                        </p>
                    </div>
                    <div className="flex items-center gap-2 sm:gap-3 hover:text-red-600 transition-colors duration-300">
                        <Clock className="w-4 sm:w-5 h-4 sm:h-5 text-gray-500" />
                        <p>
                            <strong>Time:</strong> {press.time}
                        </p>
                    </div>
                    <div className="flex items-center gap-2 sm:gap-3 hover:text-red-600 transition-colors duration-300">
                        <Calendar className="w-4 sm:w-5 h-4 sm:h-5 text-gray-500" />
                        <p>
                            <strong>When:</strong> {press.when}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default PressDetails;
