require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger7 = class("Q14039Trigger7", GadgetActorProxy)
Q14039Trigger7.defaultAlias = "Q14039Trigger7"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger7:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger7] OnPostDataPrepare")
    this = self
end

function Q14039Trigger7:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger7] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger7:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger7] TriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("14039"):RequestInteraction(npcs.Npc14245Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14039Trigger7:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger7] PreTriggerIn")
end

function Q14039Trigger7:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger7] LightUpTriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q14039Trigger7:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger7] TriggerOut")
end

return Q14039Trigger7
