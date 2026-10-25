require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7500403Trigger = class("Q7500403Trigger", GadgetActorProxy)
Q7500403Trigger.defaultAlias = "Q7500403Trigger"
local Q75004ClientConfig = require("Quest/Client/Q75004ClientConfig")

local this
local subIDs = Q75004ClientConfig.SubIDs
local npcs = Q75004ClientConfig.Npcs
local datas = Q75004ClientConfig.Datas

function Q7500403Trigger:OnPostDataPrepare()
    print("[MainId: 75004][Trigger: Q7500403Trigger] OnPostDataPrepare")
    this = self
end

function Q7500403Trigger:OnPostComponentPrepare()
    print("[MainId: 75004][Trigger: Q7500403Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 50, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75004)
end

function Q7500403Trigger:TriggerIn()
    print("[MainId: 75004][Trigger: Q7500403Trigger] TriggerIn")
    actorMgr:GetActor("75004"):RequestInteraction(npcs.Npc21557Data.alias, "", true)
    this:DestroySelf()
end

function Q7500403Trigger:PreTriggerIn()
    print("[MainId: 75004][Trigger: Q7500403Trigger] PreTriggerIn")
end

function Q7500403Trigger:LightUpTriggerIn()
    print("[MainId: 75004][Trigger: Q7500403Trigger] LightUpTriggerIn")
end

function Q7500403Trigger:TriggerOut()
    print("[MainId: 75004][Trigger: Q7500403Trigger] TriggerOut")
end

return Q7500403Trigger
