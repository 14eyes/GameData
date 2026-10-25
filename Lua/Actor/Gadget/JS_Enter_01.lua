require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local JS_Enter_01 = class("JS_Enter_01", GadgetActorProxy)
JS_Enter_01.defaultAlias = "JS_Enter_01"
local Q72166ClientConfig = require("Quest/Client/Q72166ClientConfig")

local subIDs = Q72166ClientConfig.SubIDs
local npcs = Q72166ClientConfig.Npcs
local datas = Q72166ClientConfig.Datas

function JS_Enter_01:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function JS_Enter_01:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function JS_Enter_01:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72166"):FinishQuestID(false, 7216606)
    self:DestroySelf()
end

function JS_Enter_01:TriggerOut()
    print("TriggerOut")
end

return JS_Enter_01
