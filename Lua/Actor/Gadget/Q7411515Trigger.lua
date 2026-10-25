require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411515Trigger = class("Q7411515Trigger", GadgetActorProxy)
Q7411515Trigger.defaultAlias = "Q7411515Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411515Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411515Trigger] OnPostDataPrepare")
    this = self
end

function Q7411515Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411515Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16.5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411515Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411515Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411515)
    this:DestroySelf()
end

function Q7411515Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411515Trigger] PreTriggerIn")
end

function Q7411515Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411515Trigger] LightUpTriggerIn")
end

function Q7411515Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411515Trigger] TriggerOut")
end

return Q7411515Trigger
