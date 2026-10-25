require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620501Talknoblack = class("Q7620501Talknoblack", GadgetActorProxy)
Q7620501Talknoblack.defaultAlias = "Q7620501Talknoblack"
local Q76205ClientConfig = require("Quest/Client/Q76205ClientConfig")

local this
local subIDs = Q76205ClientConfig.SubIDs
local datas = Q76205ClientConfig.Datas
local npcs = Q76205ClientConfig.Npcs
local points = Q76205ClientConfig.Points

function Q7620501Talknoblack:OnPostDataPrepare()
    print("Q7620501Talknoblack - OnPostDataPrepare")
    this = self
end

function Q7620501Talknoblack:OnPostComponentPrepare()
    print("Q7620501Talknoblack - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76205)
end

function Q7620501Talknoblack:TriggerIn()
    print("Q7620501Talknoblack - TriggerIn")
    this:DestroySelf()
end

function Q7620501Talknoblack:PreTriggerIn()
    print("Q7620501Talknoblack - PreTriggerIn")
end

function Q7620501Talknoblack:LightUpTriggerIn()
    print("Q7620501Talknoblack - LightUpTriggerIn")
end

function Q7620501Talknoblack:TriggerOut()
    print("Q7620501Talknoblack - TriggerOut")
end

return Q7620501Talknoblack
