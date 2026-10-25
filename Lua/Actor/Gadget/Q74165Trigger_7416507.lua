require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74165Trigger_7416507 = class("Q74165Trigger_7416507", GadgetActorProxy)
Q74165Trigger_7416507.defaultAlias = "Q74165Trigger_7416507"
local Q74165ClientConfig = require("Quest/Client/Q74165ClientConfig")

local this
local subIDs = Q74165ClientConfig.SubIDs
local npcs = Q74165ClientConfig.Npcs
local datas = Q74165ClientConfig.Datas

function Q74165Trigger_7416507:OnPostDataPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] OnPostDataPrepare")
    this = self
end

function Q74165Trigger_7416507:OnPostComponentPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(50, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74165Trigger_7416507:TriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] TriggerIn")
    actorUtils.FinishQuestID(false, 7416507)
    this:DestroySelf()
end

function Q74165Trigger_7416507:PreTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] PreTriggerIn")
end

function Q74165Trigger_7416507:LightUpTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] LightUpTriggerIn")
end

function Q74165Trigger_7416507:TriggerOut()
    print("[MainId: 74165][Trigger: Q74165Trigger_7416507] TriggerOut")
end

return Q74165Trigger_7416507
