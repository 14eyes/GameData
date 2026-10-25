require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local StoneFindA_Trigger = class("StoneFindA_Trigger", GadgetActorProxy)
StoneFindA_Trigger.defaultAlias = "StoneFindA_Trigger"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function StoneFindA_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function StoneFindA_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function StoneFindA_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):NarratorOnlyTask(datas.Reminder_StoneFind_1, nil, "")
    self:DestroySelf()
end

function StoneFindA_Trigger:TriggerOut()
    print("TriggerOut")
end

return StoneFindA_Trigger
