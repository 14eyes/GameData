require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110201Trigger = class("Q7110201Trigger", GadgetActorProxy)
Q7110201Trigger.defaultAlias = "Q7110201Trigger"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110201Trigger:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger] OnPostDataPrepare")
    this = self
end

function Q7110201Trigger:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger] OnPostComponentPrepare")
    this:AddPolygonTrigger(1, "BigWorld_CygEnter_01", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 71102)
end

function Q7110201Trigger:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7110201)
    this:DestroySelf()
end

function Q7110201Trigger:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger] PreTriggerIn")
end

function Q7110201Trigger:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger] LightUpTriggerIn")
end

function Q7110201Trigger:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110201Trigger] TriggerOut")
end

return Q7110201Trigger
