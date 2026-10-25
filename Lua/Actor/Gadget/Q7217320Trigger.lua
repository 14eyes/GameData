require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217320Trigger = class("Q7217320Trigger", GadgetActorProxy)
Q7217320Trigger.defaultAlias = "Q7217320Trigger"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217320Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217320Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217320Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72173")
    actor:FinishQuestID(false, 7217320)
    actor:RequestInteraction(npcs.Npc20321Data.alias)
    self:DestroySelf()
end

function Q7217320Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7217320Trigger
