require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415604Trigger4 = class("Q7415604Trigger4", GadgetActorProxy)
Q7415604Trigger4.defaultAlias = "Q7415604Trigger4"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q7415604Trigger4:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] OnPostDataPrepare")
    this = self
end

function Q7415604Trigger4:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415604Trigger4:TriggerIn()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] TriggerIn")
    local actor = actorMgr:GetActor("74156")
    actor:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    actor:CreateQuestNpcById(7415604, npcs.Npc21249Data.id, 1)
    actor:RequestInteraction(npcs.Npc21249Data.alias, "", true)
    this:DestroySelf()
end

function Q7415604Trigger4:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] PreTriggerIn")
end

function Q7415604Trigger4:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] LightUpTriggerIn")
end

function Q7415604Trigger4:TriggerOut()
    print("[MainId: 74156][Trigger: Q7415604Trigger4] TriggerOut")
end

return Q7415604Trigger4
