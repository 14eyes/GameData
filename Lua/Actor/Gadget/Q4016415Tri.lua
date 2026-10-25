require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016415Tri = class("Q4016415Tri", GadgetActorProxy)
Q4016415Tri.defaultAlias = "Q4016415Tri"
local Q40164ClientConfig = require("Quest/Client/Q40164ClientConfig")

local this
local subIDs = Q40164ClientConfig.SubIDs
local datas = Q40164ClientConfig.Datas
local npcs = Q40164ClientConfig.Npcs
local points = Q40164ClientConfig.Points

function Q4016415Tri:OnPostDataPrepare()
    print("Q4016415Tri - OnPostDataPrepare")
    this = self
end

function Q4016415Tri:OnPostComponentPrepare()
    print("Q4016415Tri - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40164)
end

function Q4016415Tri:TriggerIn()
    print("Q4016415Tri - TriggerIn")
    local actor = actorMgr:GetActor("40164")
    local questGlobalVar = self:GetQuestGlobalVar(4016404)
    if questGlobalVar == 0 then
        actor:PlayerEnterDungeonWithData(21, 1209, 4016415, 1, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 2 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 2, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 3 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 3, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 4 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 4, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 5 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 5, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 6 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 6, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 7 then
        actor:PlayerEnterDungeonWithData(22, 1206, 4016415, 7, datas.PlayerEnterDungeonData, nil, nil)
    elseif questGlobalVar == 8 then
        actor:PlayerEnterDungeonWithData(23, 1208, 4016415, 8, datas.PlayerEnterDungeonData, nil, nil)
    end

    this:DestroySelf()
end

function Q4016415Tri:PreTriggerIn()
    print("Q4016415Tri - PreTriggerIn")
end

function Q4016415Tri:LightUpTriggerIn()
    print("Q4016415Tri - LightUpTriggerIn")
end

function Q4016415Tri:TriggerOut()
    print("Q4016415Tri - TriggerOut")
end

return Q4016415Tri
