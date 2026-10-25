require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411502Trigger = class("Q7411502Trigger", GadgetActorProxy)
Q7411502Trigger.defaultAlias = "Q7411502Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411502Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411502Trigger] OnPostDataPrepare")
    this = self
end

function Q7411502Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411502Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411502Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411502Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411502)
    this:DestroySelf()
end

function Q7411502Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411502Trigger] PreTriggerIn")
end

function Q7411502Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411502Trigger] LightUpTriggerIn")
end

function Q7411502Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411502Trigger] TriggerOut")
end

return Q7411502Trigger
