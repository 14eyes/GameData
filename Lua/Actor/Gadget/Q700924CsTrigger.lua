require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700924CsTrigger = class("Q700924CsTrigger", GadgetActorProxy)
Q700924CsTrigger.defaultAlias = "Q700924CsTrigger"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700924CsTrigger:OnPostDataPrepare()
    print("Q700924CsTrigger - OnPostDataPrepare")
    this = self
end

function Q700924CsTrigger:OnPostComponentPrepare()
    print("Q700924CsTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700924CsTrigger:TriggerIn()
    print("Q700924CsTrigger - TriggerIn")
    actorMgr:GetActor("7009"):PlayCutsceneIndex(70091801, function(arg1)
        actorUtils.FinishQuestID(false, 700924)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q700924CsTrigger:PreTriggerIn()
    print("Q700924CsTrigger - PreTriggerIn")
end

function Q700924CsTrigger:LightUpTriggerIn()
    print("Q700924CsTrigger - LightUpTriggerIn")
end

function Q700924CsTrigger:TriggerOut()
    print("Q700924CsTrigger - TriggerOut")
end

return Q700924CsTrigger
