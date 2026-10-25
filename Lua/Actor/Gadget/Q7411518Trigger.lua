require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411518Trigger = class("Q7411518Trigger", GadgetActorProxy)
Q7411518Trigger.defaultAlias = "Q7411518Trigger"
local Q74115ClientConfig = require("Quest/Client/Q74115ClientConfig")

local this
local subIDs = Q74115ClientConfig.SubIDs
local npcs = Q74115ClientConfig.Npcs
local points = Q74115ClientConfig.Points
local datas = Q74115ClientConfig.Datas

function Q7411518Trigger:OnPostDataPrepare()
    print("[MainId: 74115][Trigger: Q7411518Trigger] OnPostDataPrepare")
    this = self
end

function Q7411518Trigger:OnPostComponentPrepare()
    print("[MainId: 74115][Trigger: Q7411518Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7411518Trigger:TriggerIn()
    print("[MainId: 74115][Trigger: Q7411518Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7411518)
    this:DestroySelf()
end

function Q7411518Trigger:PreTriggerIn()
    print("[MainId: 74115][Trigger: Q7411518Trigger] PreTriggerIn")
end

function Q7411518Trigger:LightUpTriggerIn()
    print("[MainId: 74115][Trigger: Q7411518Trigger] LightUpTriggerIn")
end

function Q7411518Trigger:TriggerOut()
    print("[MainId: 74115][Trigger: Q7411518Trigger] TriggerOut")
end

return Q7411518Trigger
