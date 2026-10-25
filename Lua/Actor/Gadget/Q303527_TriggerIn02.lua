require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303527_TriggerIn02 = class("Q303527_TriggerIn02", GadgetActorProxy)
Q303527_TriggerIn02.defaultAlias = "Q303527_TriggerIn02"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303527_TriggerIn02:OnPostDataPrepare()
    print("Q303527_TriggerIn02 - OnPostDataPrepare")
    this = self
end

function Q303527_TriggerIn02:OnPostComponentPrepare()
    print("Q303527_TriggerIn02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(5, 40, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303527_TriggerIn02:TriggerIn()
    print("Q303527_TriggerIn02 - TriggerIn")
    actorMgr:GetActor("3035"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("3035"):QuestNarratorTask(datas.NarratorWithId_Q303527_01, nil)
    end)

    this:DestroySelf()
end

function Q303527_TriggerIn02:PreTriggerIn()
    print("Q303527_TriggerIn02 - PreTriggerIn")
end

function Q303527_TriggerIn02:LightUpTriggerIn()
    print("Q303527_TriggerIn02 - LightUpTriggerIn")
end

function Q303527_TriggerIn02:TriggerOut()
    print("Q303527_TriggerIn02 - TriggerOut")
end

return Q303527_TriggerIn02
