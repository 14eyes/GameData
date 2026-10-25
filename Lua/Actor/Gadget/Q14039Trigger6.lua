require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger6 = class("Q14039Trigger6", GadgetActorProxy)
Q14039Trigger6.defaultAlias = "Q14039Trigger6"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger6:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger6] OnPostDataPrepare")
    this = self
end

function Q14039Trigger6:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger6] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger6:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger6] TriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("14039"):TransmitPlayerWithQuestIdByData(1403922, 2, datas.TransmitData)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14039Trigger6:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger6] PreTriggerIn")
end

function Q14039Trigger6:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger6] LightUpTriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14039Trigger6:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger6] TriggerOut")
end

return Q14039Trigger6
