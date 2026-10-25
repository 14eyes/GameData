require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79023 = class("Quest79023", QuestActorProxy)
Quest79023.defaultAlias = "Quest79023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902314"] = self.OnSubStart7902314,
        ["7902301"] = self.OnSubStart7902301,
        ["7902310"] = self.OnSubStart7902310,
        ["7902302"] = self.OnSubStart7902302,
        ["7902303"] = self.OnSubStart7902303,
        ["7902313"] = self.OnSubStart7902313,
        ["7902305"] = self.OnSubStart7902305,
        ["7902306"] = self.OnSubStart7902306,
        ["7902307"] = self.OnSubStart7902307,
        ["7902308"] = self.OnSubStart7902308,
        ["7902309"] = self.OnSubStart7902309,
        ["7902311"] = self.OnSubStart7902311,
        ["7902312"] = self.OnSubStart7902312
    }
end

function Quest79023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902314"] = self.OnSubFinish7902314,
        ["7902301"] = self.OnSubFinish7902301,
        ["7902310"] = self.OnSubFinish7902310,
        ["7902302"] = self.OnSubFinish7902302,
        ["7902303"] = self.OnSubFinish7902303,
        ["7902313"] = self.OnSubFinish7902313,
        ["7902305"] = self.OnSubFinish7902305,
        ["7902306"] = self.OnSubFinish7902306,
        ["7902307"] = self.OnSubFinish7902307,
        ["7902308"] = self.OnSubFinish7902308,
        ["7902309"] = self.OnSubFinish7902309,
        ["7902311"] = self.OnSubFinish7902311,
        ["7902312"] = self.OnSubFinish7902312
    }
end

function Quest79023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7902310"] = self.OnSubFailed7902310}
end

function Quest79023:Start()
    print("Start")
end

function Quest79023:OnDestroy()
    print("OnDestroy")
end

function Quest79023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79023:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79023:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest79023:OnSubStart7902301(arg1)
    print("OnSubStart7902301")
end

function Quest79023:OnSubFinish7902301(arg1)
    print("OnSubFinish7902301")
end

function Quest79023:OnSubStart7902310(arg1)
    print("OnSubStart7902310")
end

function Quest79023:OnSubFinish7902310(arg1)
    print("OnSubFinish7902310")
end

function Quest79023:OnSubFailed7902310(arg1)
    print("OnSubFailed7902310")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest79023:OnSubStart7902302(arg1)
    print("OnSubStart7902302")
end

function Quest79023:OnSubFinish7902302(arg1)
    print("OnSubFinish7902302")
end

function Quest79023:OnSubStart7902303(arg1)
    print("OnSubStart7902303")
end

function Quest79023:OnSubFinish7902303(arg1)
    print("OnSubFinish7902303")
end

function Quest79023:OnSubStart7902313(arg1)
    print("OnSubStart7902313")
end

function Quest79023:OnSubFinish7902313(arg1)
    print("OnSubFinish7902313")
end

function Quest79023:OnSubStart7902305(arg1)
    print("OnSubStart7902305")
end

function Quest79023:OnSubFinish7902305(arg1)
    print("OnSubFinish7902305")
end

function Quest79023:OnSubStart7902306(arg1)
    print("OnSubStart7902306")
end

function Quest79023:OnSubFinish7902306(arg1)
    print("OnSubFinish7902306")
end

function Quest79023:OnSubStart7902307(arg1)
    print("OnSubStart7902307")
    self:CreateQuestNpc(arg1, npcs.Npc20622Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20623Data.id, 2)
end

function Quest79023:OnSubFinish7902307(arg1)
    print("OnSubFinish7902307")
end

function Quest79023:OnSubStart7902308(arg1)
    print("OnSubStart7902308")
end

function Quest79023:OnSubFinish7902308(arg1)
    print("OnSubFinish7902308")
end

function Quest79023:OnSubStart7902309(arg1)
    print("OnSubStart7902309")
end

function Quest79023:OnSubFinish7902309(arg1)
    print("OnSubFinish7902309")
end

function Quest79023:OnSubStart7902311(arg1)
    print("OnSubStart7902311")
    self:CreateQuestNpc(arg1, npcs.Npc20622Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20623Data.id, 2)
end

function Quest79023:OnSubFinish7902311(arg1)
    print("OnSubFinish7902311")
end

function Quest79023:OnSubStart7902312(arg1)
    print("OnSubStart7902312")
    self:CreateQuestNpc(arg1, npcs.Npc20622Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20623Data.id, 2)
    if self:GetQuestVar(7902312, 0) == 0 then
        self:NarratorOnlyTask(datas.gofindher, function(arg1)
            arg1:SetQuestVarByMainId(0, 1)
        end, 79023)
    end
end

function Quest79023:OnSubFinish7902312(arg1)
    print("OnSubFinish7902312")
end

return Quest79023
