require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303511_TriggerIn = class("Q303511_TriggerIn", GadgetActorProxy)
Q303511_TriggerIn.defaultAlias = "Q303511_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303511_TriggerIn:OnPostDataPrepare()
    print("Q303511_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303511_TriggerIn:OnPostComponentPrepare()
    print("Q303511_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303511_TriggerIn:TriggerIn()
    print("Q303511_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):PlayerEnterDungeonWithData(1, 1314, 303511, 1, datas.PlayerEnterDungeonData_Q303510, function(arg1)
        actorMgr:GetActor("3035"):ActionSafeCall(function(arg1)
            actorMgr:GetActor("3035"):QuestNarratorTask(datas.NarratorWithId_Q303510, nil)
        end)
    end, nil)

    this:DestroySelf()
end

function Q303511_TriggerIn:PreTriggerIn()
    print("Q303511_TriggerIn - PreTriggerIn")
end

function Q303511_TriggerIn:LightUpTriggerIn()
    print("Q303511_TriggerIn - LightUpTriggerIn")
end

function Q303511_TriggerIn:TriggerOut()
    print("Q303511_TriggerIn - TriggerOut")
end

return Q303511_TriggerIn
