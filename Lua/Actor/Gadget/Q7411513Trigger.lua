require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411513Trigger = class("Q7411513Trigger", GadgetActorProxy)
Q7411513Trigger.defaultAlias = "Q7411513Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411513Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411513Trigger] OnPostDataPrepare")
    this = self
end

function Q7411513Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411513Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411513Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411513Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411513)
    this:DestroySelf()
end

function Q7411513Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411513Trigger] PreTriggerIn")
end

function Q7411513Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411513Trigger] LightUpTriggerIn")
end

function Q7411513Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411513Trigger] TriggerOut")
end

return Q7411513Trigger
