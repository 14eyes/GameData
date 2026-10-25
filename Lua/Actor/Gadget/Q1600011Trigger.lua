require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600011Trigger = class("Q1600011Trigger", GadgetActorProxy)
Q1600011Trigger.defaultAlias = "Q1600011Trigger"
local Q16000ClientConfig = require("Quest/Client/Q16000ClientConfig")

local this
local subIDs = Q16000ClientConfig.SubIDs
local datas = Q16000ClientConfig.Datas
local npcs = Q16000ClientConfig.Npcs
local points = Q16000ClientConfig.Points

function Q1600011Trigger:OnPostDataPrepare()
    print("Q1600011Trigger - OnPostDataPrepare")
    this = self
end

function Q1600011Trigger:OnPostComponentPrepare()
    print("Q1600011Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16000)
end

function Q1600011Trigger:TriggerIn()
    print("Q1600011Trigger - TriggerIn")
    actorUtils.ShowContext("MagicInkBar", 1)
    if actorMgr:GetActor("16000"):GetQuestVar(1600011, 5) == 0 then
        actorMgr:GetActor("16000"):ShowTutorialDialog(2495, function(arg1)
            actorMgr:GetActor("16000"):SetQuestVarByMainId(5, 1)
        end)
    end
end

function Q1600011Trigger:PreTriggerIn()
    print("Q1600011Trigger - PreTriggerIn")
end

function Q1600011Trigger:LightUpTriggerIn()
    print("Q1600011Trigger - LightUpTriggerIn")
end

function Q1600011Trigger:TriggerOut()
    print("Q1600011Trigger - TriggerOut")
end

return Q1600011Trigger
