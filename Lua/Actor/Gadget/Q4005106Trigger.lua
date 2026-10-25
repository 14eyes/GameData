require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005106Trigger = class("Q4005106Trigger", GadgetActorProxy)
Q4005106Trigger.defaultAlias = "Q4005106Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q4005106Trigger:FuncBegin()
    print("FuncBegin")
    local actor = actorMgr:GetActor("40051")
    local questVar = actor:GetQuestVar(4005110, 1)
    print("Q40051questvar1 =", questVar)
    local v = actor:GetQuestVar(4005110, 2)
    print("Q40051questvar2 =", v)
    if v ~= 11 and v ~= 1 and v ~= 101 and v ~= 111 then
        local n = v + 1
        actor:SetQuestVarByMainId(2, n)
        print("Q4005106 set questvar2 =", n)
        local n2 = questVar + 1
        actor:SetQuestVarByMainId(1, n2)
        print("Q4005106 set questvar1 =", n2)
        if n2 == 1 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005103, nil, 40051)
        elseif n2 == 2 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005104, nil, 40051)
        elseif n2 == 3 then
            actor:NarratorOnlyTaskByData(datas.NarratorWithId4005105, nil, 40051)
        end
    end

    self:ActorDestroy("Q4005106Trigger")
end

function Q4005106Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005106Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(101.4984, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005106Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):PlayCutsceneIndex("400510601", self.FuncBegin, nil, nil, true)
end

function Q4005106Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005106Trigger
