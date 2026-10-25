require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005107Trigger = class("Q4005107Trigger", GadgetActorProxy)
Q4005107Trigger.defaultAlias = "Q4005107Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005107Trigger:FuncBegin()
    print("FuncBegin")
    local actor = actorMgr:GetActor("40051")
    local questVar = actor:GetQuestVar(4005110, 1)
    print("Q40051questvar1 =", questVar)
    local v = actor:GetQuestVar(4005110, 2)
    print("Q40051questvar2 =", v)
    if v ~= 11 and v ~= 110 and v ~= 10 and v ~= 111 then
        local n = v + 10
        actor:SetQuestVarByMainId(2, n)
        print("Q4005107 set questvar2 =", n)
        local n2 = questVar + 1
        actor:SetQuestVarByMainId(1, n2)
        print("Q4005107 set questvar1 =", n2)
        if n2 == 1 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005103, nil, 40051)
        elseif n2 == 2 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005104, nil, 40051)
        elseif n2 == 3 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005105, nil, 40051)
        end
    end

    self:ActorDestroy("Q4005107Trigger")
end

function Q4005107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(84.56121, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005107Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):PlayCutsceneIndex("400510701", self.FuncBegin, nil, nil, true)
end

function Q4005107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005107Trigger
