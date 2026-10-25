require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411504Trigger = class("Q7411504Trigger", GadgetActorProxy)
Q7411504Trigger.defaultAlias = "Q7411504Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411504Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411504Trigger] OnPostDataPrepare")
    this = self
end

function Q7411504Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411504Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411504Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411504Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411504)
    this:DestroySelf()
end

function Q7411504Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411504Trigger] PreTriggerIn")
end

function Q7411504Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411504Trigger] LightUpTriggerIn")
end

function Q7411504Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411504Trigger] TriggerOut")
end

return Q7411504Trigger
