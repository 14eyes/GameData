require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110201Trigger01 = class("Q7110201Trigger01", GadgetActorProxy)
Q7110201Trigger01.defaultAlias = "Q7110201Trigger01"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110201Trigger01:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] OnPostDataPrepare")
    this = self
end

function Q7110201Trigger01:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] OnPostComponentPrepare")
    this:AddPolygonTrigger(2, "BigWorld_CygEnter_02", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 71102)
end

function Q7110201Trigger01:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] TriggerIn")
    actorUtils.FinishQuestID(false, 7110201)
    this:DestroySelf()
end

function Q7110201Trigger01:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] PreTriggerIn")
end

function Q7110201Trigger01:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] LightUpTriggerIn")
end

function Q7110201Trigger01:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110201Trigger01] TriggerOut")
end

return Q7110201Trigger01
