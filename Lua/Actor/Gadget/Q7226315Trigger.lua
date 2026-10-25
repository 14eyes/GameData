require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226315Trigger = class("Q7226315Trigger", GadgetActorProxy)
Q7226315Trigger.defaultAlias = "Q7226315Trigger"
local Q72263ClientConfig = require("Quest/Client/Q72263ClientConfig")

local subIDs = Q72263ClientConfig.SubIDs
local npcs = Q72263ClientConfig.Npcs
local datas = Q72263ClientConfig.Datas

function Q7226315Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226315Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226315Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72263"):FinishQuestID(false, 7226315)
    self:DestroySelf()
end

function Q7226315Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7226315Trigger
