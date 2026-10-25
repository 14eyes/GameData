require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75024Trigger02 = class("Q75024Trigger02", GadgetActorProxy)
Q75024Trigger02.defaultAlias = "Q75024Trigger02"
local Q75024ClientConfig = require("Quest/Client/Q75024ClientConfig")

local this
local subIDs = Q75024ClientConfig.SubIDs
local datas = Q75024ClientConfig.Datas
local npcs = Q75024ClientConfig.Npcs
local points = Q75024ClientConfig.Points

function Q75024Trigger02:OnPostDataPrepare()
    print("Q75024Trigger02 - OnPostDataPrepare")
    this = self
end

function Q75024Trigger02:OnPostComponentPrepare()
    print("Q75024Trigger02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14.043638, 15.218617, 6.8941674, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75024)
end

function Q75024Trigger02:TriggerIn()
    print("Q75024Trigger02 - TriggerIn")
    actorMgr:GetActor("75024"):QuestNarratorTask(datas.NarratorWithId_750249940, nil)
    actorMgr:GetActor("75024"):GetQuestNpcActor(npcs.Npc21460.alias, 75024):RunToTask({x = -2031.206, y = 74.725, z = 8496.735}, nil, nil, nil)
    this:DestroySelf()
end

function Q75024Trigger02:PreTriggerIn()
    print("Q75024Trigger02 - PreTriggerIn")
end

function Q75024Trigger02:LightUpTriggerIn()
    print("Q75024Trigger02 - LightUpTriggerIn")
end

function Q75024Trigger02:TriggerOut()
    print("Q75024Trigger02 - TriggerOut")
end

return Q75024Trigger02
