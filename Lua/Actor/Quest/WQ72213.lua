require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72213 = class("Quest72213", QuestActorProxy)
Quest72213.defaultAlias = "Quest72213"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72213:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221301"] = self.OnSubStart7221301,
        ["7221302"] = self.OnSubStart7221302,
        ["7221303"] = self.OnSubStart7221303,
        ["7221305"] = self.OnSubStart7221305,
        ["7221304"] = self.OnSubStart7221304
    }
end

function Quest72213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221301"] = self.OnSubFinish7221301,
        ["7221302"] = self.OnSubFinish7221302,
        ["7221303"] = self.OnSubFinish7221303,
        ["7221305"] = self.OnSubFinish7221305,
        ["7221304"] = self.OnSubFinish7221304
    }
end

function Quest72213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221301"] = self.OnSubFailed7221301,
        ["7221302"] = self.OnSubFailed7221302,
        ["7221303"] = self.OnSubFailed7221303,
        ["7221305"] = self.OnSubFailed7221305,
        ["7221304"] = self.OnSubFailed7221304
    }
end

function Quest72213:Start()
    print("Start")
end

function Quest72213:OnDestroy()
    print("OnDestroy")
end

function Quest72213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72213:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72213:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72213:OnSubStart7221301(arg1)
    print("OnSubStart7221301")
    self:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
end

function Quest72213:OnSubFinish7221301(arg1)
    print("OnSubFinish7221301")
end

function Quest72213:OnSubFailed7221301(arg1)
    print("OnSubFailed7221301")
end

function Quest72213:OnSubStart7221302(arg1)
    print("OnSubStart7221302")
end

function Quest72213:OnSubFinish7221302(arg1)
    print("OnSubFinish7221302")
end

function Quest72213:OnSubFailed7221302(arg1)
    print("OnSubFailed7221302")
end

function Quest72213:OnSubStart7221303(arg1)
    print("OnSubStart7221303")
end

function Quest72213:OnSubFinish7221303(arg1)
    print("OnSubFinish7221303")
end

function Quest72213:OnSubFailed7221303(arg1)
    print("OnSubFailed7221303")
end

function Quest72213:OnSubStart7221305(arg1)
    print("OnSubStart7221305")
end

function Quest72213:OnSubFinish7221305(arg1)
    print("OnSubFinish7221305")
end

function Quest72213:OnSubFailed7221305(arg1)
    print("OnSubFailed7221305")
end

function Quest72213:OnSubStart7221304(arg1)
    print("OnSubStart7221304")
end

function Quest72213:OnSubFinish7221304(arg1)
    print("OnSubFinish7221304")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
end

function Quest72213:OnSubFailed7221304(arg1)
    print("OnSubFailed7221304")
end

return Quest72213
