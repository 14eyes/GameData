require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1907402Trigger = class("Q1907402Trigger", GadgetActorProxy)
Q1907402Trigger.defaultAlias = "Q1907402Trigger"
local Q19074ClientConfig = require("Quest/Client/Q19074ClientConfig")

local this
local subIDs = Q19074ClientConfig.SubIDs
local npcs = Q19074ClientConfig.Npcs
local datas = Q19074ClientConfig.Datas

function Q1907402Trigger:OnPostDataPrepare()
    print("[MainId: 19074][Trigger: Q1907402Trigger] OnPostDataPrepare")
    this = self
end

function Q1907402Trigger:OnPostComponentPrepare()
    print("[MainId: 19074][Trigger: Q1907402Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(9.434195, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1907402Trigger:TriggerIn()
    print("[MainId: 19074][Trigger: Q1907402Trigger] TriggerIn")
    actorMgr:GetActor("19074"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19074")
        actor:RequestInteraction(npcs.Npc1055Data.alias)
        actor:CreateQuestNpcById(1907402, npcs.Coop_KavehData.id, 1)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q1907402Trigger:PreTriggerIn()
    print("[MainId: 19074][Trigger: Q1907402Trigger] PreTriggerIn")
end

function Q1907402Trigger:LightUpTriggerIn()
    print("[MainId: 19074][Trigger: Q1907402Trigger] LightUpTriggerIn")
end

function Q1907402Trigger:TriggerOut()
    print("[MainId: 19074][Trigger: Q1907402Trigger] TriggerOut")
end

return Q1907402Trigger
