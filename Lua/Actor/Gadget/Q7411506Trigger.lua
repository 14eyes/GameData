require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411506Trigger = class("Q7411506Trigger", GadgetActorProxy)
Q7411506Trigger.defaultAlias = "Q7411506Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411506Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411506Trigger] OnPostDataPrepare")
    this = self
end

function Q7411506Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411506Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411506Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411506Trigger] TriggerIn")
    self:EnterCombatSneakMode(sensingRange)
end

function Q7411506Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411506Trigger] PreTriggerIn")
end

function Q7411506Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411506Trigger] LightUpTriggerIn")
end

function Q7411506Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411506Trigger] TriggerOut")
    self:ExitCombatSneakMode()
end

return Q7411506Trigger
