require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41334Trigger = class("Q41334Trigger", GadgetActorProxy)
Q41334Trigger.defaultAlias = "Q41334Trigger"
local Q41334ClientConfig = require("Quest/Client/Q41334ClientConfig")

local mainID = Q41334ClientConfig.MainID
local actorAlias = Q41334ClientConfig.ActorAlias
local subIDs = Q41334ClientConfig.SubIDs
local npcs = Q41334ClientConfig.Npcs
local gadgets = Q41334ClientConfig.Gadgets
local datas = Q41334ClientConfig.Datas

function Q41334Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41334Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41334Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4133420)
    self:DestroySelf()
end

function Q41334Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41334Trigger
