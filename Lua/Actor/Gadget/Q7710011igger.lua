require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710011igger = class("Q7710011igger", GadgetActorProxy)
Q7710011igger.defaultAlias = "Q7710011igger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710011igger:OnPostDataPrepare()
    print("Q7710011igger - OnPostDataPrepare")
    this = self
end

function Q7710011igger:OnPostComponentPrepare()
    print("Q7710011igger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710011igger:TriggerIn()
    print("Q7710011igger - TriggerIn")
    actorMgr:GetActor("77100"):PlayCutsceneIndex(7710011, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710011})
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7710011igger:PreTriggerIn()
    print("Q7710011igger - PreTriggerIn")
end

function Q7710011igger:LightUpTriggerIn()
    print("Q7710011igger - LightUpTriggerIn")
end

function Q7710011igger:TriggerOut()
    print("Q7710011igger - TriggerOut")
end

return Q7710011igger
