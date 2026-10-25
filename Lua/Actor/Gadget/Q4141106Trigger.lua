require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141106Trigger = class("Q4141106Trigger", GadgetActorProxy)
Q4141106Trigger.defaultAlias = "Q4141106Trigger"
local Q41411ClientConfig = require("Quest/Client/Q41411ClientConfig")

local mainID = Q41411ClientConfig.MainID
local actorAlias = Q41411ClientConfig.ActorAlias
local subIDs = Q41411ClientConfig.SubIDs
local npcs = Q41411ClientConfig.Npcs
local datas = Q41411ClientConfig.Datas

function Q4141106Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141106Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141106Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4141106)
    self:DestroySelf()
end

function Q4141106Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141106Trigger
