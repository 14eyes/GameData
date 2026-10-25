require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601617Cs = class("Q601617Cs", GadgetActorProxy)
Q601617Cs.defaultAlias = "Q601617Cs"
local Q6016ClientConfig = require("Quest/Client/Q6016ClientConfig")

local this
local subIDs = Q6016ClientConfig.SubIDs
local datas = Q6016ClientConfig.Datas
local npcs = Q6016ClientConfig.Npcs
local points = Q6016ClientConfig.Points

function Q601617Cs:OnPostDataPrepare()
    print("Q601617Cs - OnPostDataPrepare")
    this = self
end

function Q601617Cs:OnPostComponentPrepare()
    print("Q601617Cs - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6016)
end

function Q601617Cs:TriggerIn()
    print("Q601617Cs - TriggerIn")
end

function Q601617Cs:PreTriggerIn()
    print("Q601617Cs - PreTriggerIn")
end

function Q601617Cs:LightUpTriggerIn()
    print("Q601617Cs - LightUpTriggerIn")
    actorMgr:GetActor("6016"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("6016"):PlayCutsceneIndex(60161701, function(arg1)
            actorUtils.FinishQuestID(false, 601617)
        end, nil, nil, false)
    end, nil, nil, "", false, true)
end

function Q601617Cs:TriggerOut()
    print("Q601617Cs - TriggerOut")
end

return Q601617Cs
