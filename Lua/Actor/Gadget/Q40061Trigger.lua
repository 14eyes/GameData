require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40061Trigger = class("Q40061Trigger", GadgetActorProxy)
Q40061Trigger.defaultAlias = "Q40061Trigger"
local Q40061ClientConfig = require("Quest/Client/Q40061ClientConfig")

local subIDs = Q40061ClientConfig.SubIDs
local npcs = Q40061ClientConfig.Npcs
local datas = Q40061ClientConfig.Datas

function Q40061Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40061Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40061Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40061"):FinishQuestID(false, 4006102)
    self:DestroySelf()
end

function Q40061Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40061Trigger
