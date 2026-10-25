require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418408Trigger_Transmit = class("Q7418408Trigger_Transmit", GadgetActorProxy)
Q7418408Trigger_Transmit.defaultAlias = "Q7418408Trigger_Transmit"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q7418408Trigger_Transmit:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] OnPostDataPrepare")
    this = self
end

function Q7418408Trigger_Transmit:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74184)
end

function Q7418408Trigger_Transmit:TriggerIn()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] TriggerIn")
    actorMgr:GetActor("74184"):TransmitPlayerWithQuestIdByData(7418408, 1, datas.TransmitWithUIAndTextMapData, function(arg1)
        actorMgr:GetActor("74184"):DisableMainPageWithConfigByQuest(false, "DisableFontaineRemusMainQuest")
        actorUtils.SetLevelQuestDialogEnableState(true)
        this:DestroySelf()
    end)
end

function Q7418408Trigger_Transmit:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] PreTriggerIn")
end

function Q7418408Trigger_Transmit:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] LightUpTriggerIn")
end

function Q7418408Trigger_Transmit:TriggerOut()
    print("[MainId: 74184][Trigger: Q7418408Trigger_Transmit] TriggerOut")
end

return Q7418408Trigger_Transmit
