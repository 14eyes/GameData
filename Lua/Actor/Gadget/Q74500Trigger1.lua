require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74500Trigger1 = class("Q74500Trigger1", GadgetActorProxy)
Q74500Trigger1.defaultAlias = "Q74500Trigger1"
local Q74500ClientConfig = require("Quest/Client/Q74500ClientConfig")

local this
local subIDs = Q74500ClientConfig.SubIDs
local npcs = Q74500ClientConfig.Npcs
local points = Q74500ClientConfig.Points
local datas = Q74500ClientConfig.Datas

function Q74500Trigger1:OnPostDataPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger1] OnPostDataPrepare")
    this = self
end

function Q74500Trigger1:OnPostComponentPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74500Trigger1:TriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 7450004)
    this:DestroySelf()
end

function Q74500Trigger1:PreTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger1] PreTriggerIn")
end

function Q74500Trigger1:LightUpTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger1] LightUpTriggerIn")
end

function Q74500Trigger1:TriggerOut()
    print("[MainId: 74500][Trigger: Q74500Trigger1] TriggerOut")
end

return Q74500Trigger1
