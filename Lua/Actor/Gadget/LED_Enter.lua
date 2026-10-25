require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local LED_Enter = class("LED_Enter", GadgetActorProxy)
LED_Enter.defaultAlias = "LED_Enter"
local Q72175ClientConfig = require("Quest/Client/Q72175ClientConfig")

local subIDs = Q72175ClientConfig.SubIDs
local npcs = Q72175ClientConfig.Npcs
local datas = Q72175ClientConfig.Datas

function LED_Enter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function LED_Enter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function LED_Enter:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72175")
    actor:NarratorOnlyTask(datas.Reminder_Enter, nil, "")
    actor:FinishQuestID(false, 7217516)
    self:DestroySelf()
end

function LED_Enter:TriggerOut()
    print("TriggerOut")
end

return LED_Enter
