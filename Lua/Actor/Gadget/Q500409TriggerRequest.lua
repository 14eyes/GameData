require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500409TriggerRequest = class("Q500409TriggerRequest", GadgetActorProxy)
Q500409TriggerRequest.defaultAlias = "Q500409TriggerRequest"
local Q5004ClientConfig = require("Quest/Client/Q5004ClientConfig")

local this
local subIDs = Q5004ClientConfig.SubIDs
local datas = Q5004ClientConfig.Datas
local npcs = Q5004ClientConfig.Npcs
local points = Q5004ClientConfig.Points

function Q500409TriggerRequest:OnPostDataPrepare()
    print("Q500409TriggerRequest - OnPostDataPrepare")
    this = self
end

function Q500409TriggerRequest:OnPostComponentPrepare()
    print("Q500409TriggerRequest - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5004)
end

function Q500409TriggerRequest:TriggerIn()
    print("Q500409TriggerRequest - TriggerIn")
    actorMgr:GetActor("5004"):RequestInteraction(npcs.Npc14139.alias, "", true)
    this:DestroySelf()
end

function Q500409TriggerRequest:PreTriggerIn()
    print("Q500409TriggerRequest - PreTriggerIn")
end

function Q500409TriggerRequest:LightUpTriggerIn()
    print("Q500409TriggerRequest - LightUpTriggerIn")
end

function Q500409TriggerRequest:TriggerOut()
    print("Q500409TriggerRequest - TriggerOut")
end

return Q500409TriggerRequest
