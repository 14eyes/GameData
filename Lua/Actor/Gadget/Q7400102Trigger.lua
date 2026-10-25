require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400102Trigger = class("Q7400102Trigger", GadgetActorProxy)
Q7400102Trigger.defaultAlias = "Q7400102Trigger"
local Q74001ClientConfig = require("Quest/Client/Q74001ClientConfig")

local this
local subIDs = Q74001ClientConfig.SubIDs
local npcs = Q74001ClientConfig.Npcs
local points = Q74001ClientConfig.Points
local datas = Q74001ClientConfig.Datas

function Q7400102Trigger:OnPostDataPrepare()
    print("[MainId: 74001][Trigger: Q7400102Trigger] OnPostDataPrepare")
    this = self
end

function Q7400102Trigger:OnPostComponentPrepare()
    print("[MainId: 74001][Trigger: Q7400102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400102Trigger:TriggerIn()
    print("[MainId: 74001][Trigger: Q7400102Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400102)
    this:DestroySelf()
end

function Q7400102Trigger:PreTriggerIn()
    print("[MainId: 74001][Trigger: Q7400102Trigger] PreTriggerIn")
end

function Q7400102Trigger:LightUpTriggerIn()
    print("[MainId: 74001][Trigger: Q7400102Trigger] LightUpTriggerIn")
end

function Q7400102Trigger:TriggerOut()
    print("[MainId: 74001][Trigger: Q7400102Trigger] TriggerOut")
end

return Q7400102Trigger
