require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700501EnterDungeon = class("Q700501EnterDungeon", GadgetActorProxy)
Q700501EnterDungeon.defaultAlias = "Q700501EnterDungeon"
local Q7005ClientConfig = require("Quest/Client/Q7005ClientConfig")

local this
local subIDs = Q7005ClientConfig.SubIDs
local datas = Q7005ClientConfig.Datas
local npcs = Q7005ClientConfig.Npcs
local points = Q7005ClientConfig.Points

function Q700501EnterDungeon:OnPostDataPrepare()
    print("Q700501EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q700501EnterDungeon:OnPostComponentPrepare()
    print("Q700501EnterDungeon - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 160, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7005)
end

function Q700501EnterDungeon:TriggerIn()
    print("Q700501EnterDungeon - TriggerIn")
    actorMgr:GetActor("7005"):ShowBlackScreen(0, 3, 0.5, function(arg1)
        actorMgr:GetActor("7005"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2029, dungeonId = 1322, questId = 700501, questPointCfgId = 1}, datas.PlayerEnterDungeonData, nil, nil)
        actorMgr:GetActor("7005"):SetQuestVarByMainId(0, 1)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q700501EnterDungeon:PreTriggerIn()
    print("Q700501EnterDungeon - PreTriggerIn")
end

function Q700501EnterDungeon:LightUpTriggerIn()
    print("Q700501EnterDungeon - LightUpTriggerIn")
end

function Q700501EnterDungeon:TriggerOut()
    print("Q700501EnterDungeon - TriggerOut")
end

return Q700501EnterDungeon
