require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19073Trigger2 = class("Q19073Trigger2", GadgetActorProxy)
Q19073Trigger2.defaultAlias = "Q19073Trigger2"
local Q19073ClientConfig = require("Quest/Client/Q19073ClientConfig")

local this
local subIDs = Q19073ClientConfig.SubIDs
local npcs = Q19073ClientConfig.Npcs
local points = Q19073ClientConfig.Points
local datas = Q19073ClientConfig.Datas

function Q19073Trigger2:OnPostDataPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger2] OnPostDataPrepare")
    this = self
end

function Q19073Trigger2:OnPostComponentPrepare()
    print("[MainId: 19073][Trigger: Q19073Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q19073Trigger2:TriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger2] TriggerIn")
    actorMgr:GetActor("19073"):ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19073")
        actor:CreateQuestNpc(quest, npcs.Coop_KaeyaData.id, 1)
        actor:RequestInteraction(npcs.Coop_KaeyaData.alias)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q19073Trigger2:PreTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger2] PreTriggerIn")
end

function Q19073Trigger2:LightUpTriggerIn()
    print("[MainId: 19073][Trigger: Q19073Trigger2] LightUpTriggerIn")
end

function Q19073Trigger2:TriggerOut()
    print("[MainId: 19073][Trigger: Q19073Trigger2] TriggerOut")
end

return Q19073Trigger2
