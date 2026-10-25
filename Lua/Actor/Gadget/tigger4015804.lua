require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4015804 = class("tigger4015804", GadgetActorProxy)
tigger4015804.defaultAlias = "tigger4015804"
local Q40158ClientConfig = require("Quest/Client/Q40158ClientConfig")

local this
local subIDs = Q40158ClientConfig.SubIDs
local datas = Q40158ClientConfig.Datas
local npcs = Q40158ClientConfig.Npcs
local points = Q40158ClientConfig.Points

function tigger4015804:OnPostDataPrepare()
    print("tigger4015804 - OnPostDataPrepare")
    this = self
end

function tigger4015804:OnPostComponentPrepare()
    print("tigger4015804 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40158)
end

function tigger4015804:TriggerIn()
    print("tigger4015804 - TriggerIn")
    actorUtils.SetAnimationCacheBudgetValue()
    actorMgr:GetActor("40158"):PlayCutsceneIndex(4015804, function(arg1)
        actorUtils.RemoveAnimationCacheBudgetValue()
        actorUtils.FinishQuestID(false, 4015804)
        this:DestroySelf()
        actorMgr:GetActor("40158"):ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
    end, nil, nil, false)
end

function tigger4015804:PreTriggerIn()
    print("tigger4015804 - PreTriggerIn")
end

function tigger4015804:LightUpTriggerIn()
    print("tigger4015804 - LightUpTriggerIn")
end

function tigger4015804:TriggerOut()
    print("tigger4015804 - TriggerOut")
end

return tigger4015804
