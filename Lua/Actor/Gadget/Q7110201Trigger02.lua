require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110201Trigger02 = class("Q7110201Trigger02", GadgetActorProxy)
Q7110201Trigger02.defaultAlias = "Q7110201Trigger02"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110201Trigger02:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] OnPostDataPrepare")
    this = self
end

function Q7110201Trigger02:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] OnPostComponentPrepare")
    this:AddPolygonTrigger(3, "BigWorld_CygEnter_03", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 71102)
end

function Q7110201Trigger02:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] TriggerIn")
    actorUtils.FinishQuestID(false, 7110201)
end

function Q7110201Trigger02:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] PreTriggerIn")
end

function Q7110201Trigger02:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] LightUpTriggerIn")
end

function Q7110201Trigger02:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110201Trigger02] TriggerOut")
end

return Q7110201Trigger02
