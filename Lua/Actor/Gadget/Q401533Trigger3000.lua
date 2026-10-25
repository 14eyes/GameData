require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401533Trigger3000 = class("Q401533Trigger3000", GadgetActorProxy)
Q401533Trigger3000.defaultAlias = "Q401533Trigger3000"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401533Trigger3000:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] OnPostDataPrepare")
    this = self
end

function Q401533Trigger3000:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401533Trigger3000:TriggerIn()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc5262Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401533Trigger3000:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] PreTriggerIn")
end

function Q401533Trigger3000:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] LightUpTriggerIn")
end

function Q401533Trigger3000:TriggerOut()
    print("[MainId: 4015][Trigger: Q401533Trigger3000] TriggerOut")
end

return Q401533Trigger3000
