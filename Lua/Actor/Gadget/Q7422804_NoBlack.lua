require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422804_NoBlack = class("Q7422804_NoBlack", GadgetActorProxy)
Q7422804_NoBlack.defaultAlias = "Q7422804_NoBlack"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422804_NoBlack:OnPostDataPrepare()
    print("Q7422804_NoBlack - OnPostDataPrepare")
    this = self
end

function Q7422804_NoBlack:OnPostComponentPrepare()
    print("Q7422804_NoBlack - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422804_NoBlack:TriggerIn()
    print("Q7422804_NoBlack - TriggerIn")
    this:DestroySelf()
end

function Q7422804_NoBlack:PreTriggerIn()
    print("Q7422804_NoBlack - PreTriggerIn")
end

function Q7422804_NoBlack:LightUpTriggerIn()
    print("Q7422804_NoBlack - LightUpTriggerIn")
end

function Q7422804_NoBlack:TriggerOut()
    print("Q7422804_NoBlack - TriggerOut")
end

return Q7422804_NoBlack
