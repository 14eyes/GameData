require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501508 = class("tigger1501508", GadgetActorProxy)
tigger1501508.defaultAlias = "tigger1501508"
local Q15015ClientConfig = require("Quest/Client/Q15015ClientConfig")

local this
local subIDs = Q15015ClientConfig.SubIDs
local datas = Q15015ClientConfig.Datas
local npcs = Q15015ClientConfig.Npcs
local points = Q15015ClientConfig.Points

function tigger1501508:OnPostDataPrepare()
    print("tigger1501508 - OnPostDataPrepare")
    this = self
end

function tigger1501508:OnPostComponentPrepare()
    print("tigger1501508 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15015)
end

function tigger1501508:TriggerIn()
    print("tigger1501508 - TriggerIn")
    actorMgr:GetActor("15015"):PlayCutsceneIndex(150150801, function(arg1)
        actorUtils.FinishQuestID(false, 1501508)
        this:DestroySelf()
    end, nil, nil, false)
end

function tigger1501508:PreTriggerIn()
    print("tigger1501508 - PreTriggerIn")
end

function tigger1501508:LightUpTriggerIn()
    print("tigger1501508 - LightUpTriggerIn")
end

function tigger1501508:TriggerOut()
    print("tigger1501508 - TriggerOut")
end

return tigger1501508
