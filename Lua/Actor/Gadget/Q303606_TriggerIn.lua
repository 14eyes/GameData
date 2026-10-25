require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303606_TriggerIn = class("Q303606_TriggerIn", GadgetActorProxy)
Q303606_TriggerIn.defaultAlias = "Q303606_TriggerIn"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q303606_TriggerIn:OnPostDataPrepare()
    print("Q303606_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303606_TriggerIn:OnPostComponentPrepare()
    print("Q303606_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q303606_TriggerIn:TriggerIn()
    print("Q303606_TriggerIn - TriggerIn")
    this:DestroySelf()
end

function Q303606_TriggerIn:PreTriggerIn()
    print("Q303606_TriggerIn - PreTriggerIn")
end

function Q303606_TriggerIn:LightUpTriggerIn()
    print("Q303606_TriggerIn - LightUpTriggerIn")
    actorMgr:GetActor("3036"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("3036"):PlayCutsceneIndex(30360601, function(arg1)
            actorUtils.FinishQuestWithParam({false}, {303606})
        end, nil, nil, false)
    end, nil, nil, 0, false, true)
end

function Q303606_TriggerIn:TriggerOut()
    print("Q303606_TriggerIn - TriggerOut")
end

return Q303606_TriggerIn
