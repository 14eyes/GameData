require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401509zhongwuTrigger = class("Q401509zhongwuTrigger", GadgetActorProxy)
Q401509zhongwuTrigger.defaultAlias = "Q401509zhongwuTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401509zhongwuTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] OnPostDataPrepare")
    this = self
end

function Q401509zhongwuTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401509zhongwuTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc13516Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401509zhongwuTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] PreTriggerIn")
end

function Q401509zhongwuTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] LightUpTriggerIn")
end

function Q401509zhongwuTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401509zhongwuTrigger] TriggerOut")
end

return Q401509zhongwuTrigger
