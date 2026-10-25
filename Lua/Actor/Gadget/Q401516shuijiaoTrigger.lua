require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401516shuijiaoTrigger = class("Q401516shuijiaoTrigger", GadgetActorProxy)
Q401516shuijiaoTrigger.defaultAlias = "Q401516shuijiaoTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401516shuijiaoTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] OnPostDataPrepare")
    this = self
end

function Q401516shuijiaoTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401516shuijiaoTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc13517Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401516shuijiaoTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] PreTriggerIn")
end

function Q401516shuijiaoTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] LightUpTriggerIn")
end

function Q401516shuijiaoTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401516shuijiaoTrigger] TriggerOut")
end

return Q401516shuijiaoTrigger
