require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500108Tutorial01 = class("Q500108Tutorial01", GadgetActorProxy)
Q500108Tutorial01.defaultAlias = "Q500108Tutorial01"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q500108Tutorial01:OnPostDataPrepare()
    print("Q500108Tutorial01 - OnPostDataPrepare")
    this = self
end

function Q500108Tutorial01:OnPostComponentPrepare()
    print("Q500108Tutorial01 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q500108Tutorial01:TriggerIn()
    print("Q500108Tutorial01 - TriggerIn")
    actorMgr:GetActor("5001"):ShowTutorialDialog(1906, function(arg1)
        local actor = actorMgr:GetActor("5001")
        local v = actorMgr:GetActor("5001")
        local questNpcActor = v:GetQuestNpcActor(npcs.Npc14333.alias, 0)
        v:NpcNarratorOnlyTaskByData(questNpcActor, datas.Q500108Kaiche01, nil, 5001)
        this:DestroySelf()
    end)
end

function Q500108Tutorial01:PreTriggerIn()
    print("Q500108Tutorial01 - PreTriggerIn")
end

function Q500108Tutorial01:LightUpTriggerIn()
    print("Q500108Tutorial01 - LightUpTriggerIn")
end

function Q500108Tutorial01:TriggerOut()
    print("Q500108Tutorial01 - TriggerOut")
end

return Q500108Tutorial01
