require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74083 = class("Quest74083", QuestActorProxy)
Quest74083.defaultAlias = "Quest74083"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74083:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74083:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408301"] = self.OnSubStart7408301,
        ["7408311"] = self.OnSubStart7408311,
        ["7408314"] = self.OnSubStart7408314,
        ["7408308"] = self.OnSubStart7408308,
        ["7408309"] = self.OnSubStart7408309,
        ["7408310"] = self.OnSubStart7408310,
        ["7408313"] = self.OnSubStart7408313,
        ["7408305"] = self.OnSubStart7408305,
        ["7408312"] = self.OnSubStart7408312,
        ["7408306"] = self.OnSubStart7408306,
        ["7408307"] = self.OnSubStart7408307
    }
end

function Quest74083:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408301"] = self.OnSubFinish7408301,
        ["7408311"] = self.OnSubFinish7408311,
        ["7408314"] = self.OnSubFinish7408314,
        ["7408308"] = self.OnSubFinish7408308,
        ["7408309"] = self.OnSubFinish7408309,
        ["7408310"] = self.OnSubFinish7408310,
        ["7408313"] = self.OnSubFinish7408313,
        ["7408305"] = self.OnSubFinish7408305,
        ["7408312"] = self.OnSubFinish7408312,
        ["7408306"] = self.OnSubFinish7408306,
        ["7408307"] = self.OnSubFinish7408307
    }
end

function Quest74083:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74083:Start()
    print("Start")
end

function Quest74083:OnDestroy()
    print("OnDestroy")
end

function Quest74083:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74083:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74083:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74083:OnSubStart7408301(arg1)
    print("OnSubStart7408301")
end

function Quest74083:OnSubFinish7408301(arg1)
    print("OnSubFinish7408301")
end

function Quest74083:OnSubStart7408311(arg1)
    print("OnSubStart7408311")
end

function Quest74083:OnSubFinish7408311(arg1)
    print("OnSubFinish7408311")
end

function Quest74083:OnSubStart7408314(arg1)
    print("OnSubStart7408314")
end

function Quest74083:OnSubFinish7408314(arg1)
    print("OnSubFinish7408314")
end

function Quest74083:OnSubStart7408308(arg1)
    print("OnSubStart7408308")
end

function Quest74083:OnSubFinish7408308(arg1)
    print("OnSubFinish7408308")
end

function Quest74083:OnSubStart7408309(arg1)
    print("OnSubStart7408309")
end

function Quest74083:OnSubFinish7408309(arg1)
    print("OnSubFinish7408309")
end

function Quest74083:OnSubStart7408310(arg1)
    print("OnSubStart7408310")
    this:CreateQuestNpc(arg1, npcs.Npc21113Data.id, 0)
    this:RequestInteraction(npcs.Npc21113Data.alias)
end

function Quest74083:OnSubFinish7408310(arg1)
    print("OnSubFinish7408310")
    this:SetNavigationByMainId(74084, true)
    this:SafeDestroyQuestNpc(npcs.Npc21113Data.alias, 3)
end

function Quest74083:OnSubStart7408313(arg1)
    print("OnSubStart7408313")
end

function Quest74083:OnSubFinish7408313(arg1)
    print("OnSubFinish7408313")
end

function Quest74083:OnSubStart7408305(arg1)
    print("OnSubStart7408305")
end

function Quest74083:OnSubFinish7408305(arg1)
    print("OnSubFinish7408305")
end

function Quest74083:OnSubStart7408312(arg1)
    print("OnSubStart7408312")
end

function Quest74083:OnSubFinish7408312(arg1)
    print("OnSubFinish7408312")
end

function Quest74083:OnSubStart7408306(arg1)
    print("OnSubStart7408306")
end

function Quest74083:OnSubFinish7408306(arg1)
    print("OnSubFinish7408306")
end

function Quest74083:OnSubStart7408307(arg1)
    print("OnSubStart7408307")
end

function Quest74083:OnSubFinish7408307(arg1)
    print("OnSubFinish7408307")
end

return Quest74083
