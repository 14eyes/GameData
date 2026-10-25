require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local JS_Enter_Trigger_01 = class("JS_Enter_Trigger_01", GadgetActorProxy)
JS_Enter_Trigger_01.defaultAlias = "JS_Enter_Trigger_01"
local Q72172ClientConfig = require("Quest/Client/Q72172ClientConfig")

local subIDs = Q72172ClientConfig.SubIDs
local npcs = Q72172ClientConfig.Npcs
local datas = Q72172ClientConfig.Datas

function JS_Enter_Trigger_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function JS_Enter_Trigger_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function JS_Enter_Trigger_01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72172"):FinishQuestID(false, 7217213)
    self:DestroySelf()
end

function JS_Enter_Trigger_01:TriggerOut()
    print("TriggerOut")
end

return JS_Enter_Trigger_01
